.class Lcom/htc/music/HtcMusic$28;
.super Landroid/content/BroadcastReceiver;
.source "HtcMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 4886
    iput-object p1, p0, Lcom/htc/music/HtcMusic$28;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 4889
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4922
    :cond_0
    :goto_0
    return-void

    .line 4895
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4899
    iget-object v1, p0, Lcom/htc/music/HtcMusic$28;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic;->finish()V

    .line 4900
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4901
    .local v0, targetIntent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4903
    iget-object v1, p0, Lcom/htc/music/HtcMusic$28;->this$0:Lcom/htc/music/HtcMusic;

    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4905
    iget-object v1, p0, Lcom/htc/music/HtcMusic$28;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    .line 4909
    iget-object v1, p0, Lcom/htc/music/HtcMusic$28;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v3, v3}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    goto :goto_0

    .line 4910
    .end local v0           #targetIntent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4912
    const-string v1, "[HtcMusic]"

    const-string v2, "onReceive: ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method