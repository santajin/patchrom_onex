.class Lcom/android/camera/CameraThread$10;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter

    .prologue
    .line 4572
    iput-object p1, p0, Lcom/android/camera/CameraThread$10;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "yuvData"
    .parameter "camera"

    .prologue
    .line 4575
    if-nez p1, :cond_0

    .line 4579
    :goto_0
    return-void

    .line 4577
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread$10;->this$0:Lcom/android/camera/CameraThread;

    #calls: Lcom/android/camera/CameraThread;->onPreviewFrameRetrieved([B)V
    invoke-static {v0, p1}, Lcom/android/camera/CameraThread;->access$3800(Lcom/android/camera/CameraThread;[B)V

    .line 4578
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method
