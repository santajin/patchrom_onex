.class final Lcom/android/camera/component/ExternalCommandServerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "ExternalCommandServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/ExternalCommandServer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "External Command Server"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/component/ExternalCommandServerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/ExternalCommandServer;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/ExternalCommandServer;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/component/ExternalCommandServer;

    invoke-direct {v0, p1}, Lcom/android/camera/component/ExternalCommandServer;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
