.class public final Lcom/scalado/caps/filter/photoart/Emboss;
.super Lcom/scalado/caps/Filter;
.source "Emboss.java"


# instance fields
.field private embossLevel:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 81
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Emboss;->nativeClassInit()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 27
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Emboss;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Emboss;->setHasActiveFilter(Z)V

    .line 29
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;F)V
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Emboss;->embossLevel:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Emboss;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 62
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Emboss;->embossLevel:F

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Emboss;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 63
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Emboss;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 64
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Emboss;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 69
    return-void
.end method

.method public set(F)V
    .locals 2
    .parameter "embossLevel"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Emboss;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 46
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Emboss;->embossLevel:F

    .line 48
    return-void
.end method
