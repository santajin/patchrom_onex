.class Lcom/android/camera/effect/EffectPanelUI$8;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$8;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Boolean;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$8;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->openUI()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1000(Lcom/android/camera/effect/EffectPanelUI;)V

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$8;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->closeUI()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$300(Lcom/android/camera/effect/EffectPanelUI;)V

    goto :goto_0
.end method
