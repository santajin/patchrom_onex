.class Lcom/android/camera/actionscreen/ActionScreen$2;
.super Ljava/lang/Object;
.source "ActionScreen.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/ActionScreen;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/ActionScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen$2;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 170
    check-cast p3, Lcom/android/camera/input/KeyEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/actionscreen/ActionScreen$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V
    .locals 2
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/input/KeyEventArgs;>;"
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$2;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    iget-object v0, v0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen$2;->this$0:Lcom/android/camera/actionscreen/ActionScreen;

    iget v1, p3, Lcom/android/camera/input/KeyEventArgs;->keyCode:I

    invoke-virtual {v0, v1, p3}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyUp(ILcom/android/camera/input/KeyEventArgs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p3}, Lcom/android/camera/input/KeyEventArgs;->setHandled()V

    .line 175
    :cond_0
    return-void
.end method
