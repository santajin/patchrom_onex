.class public final Lcom/android/camera/effect/AquaEffectFactory;
.super Lcom/android/camera/effect/ColorEffectFactory;
.source "AquaEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/effect/ColorEffectFactory",
        "<",
        "Lcom/android/camera/effect/AquaEffect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/camera/effect/ColorEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/AquaEffect;
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 10
    new-instance v0, Lcom/android/camera/effect/AquaEffect;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/AquaEffect;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/AquaEffectFactory;->createEffect(Lcom/android/camera/HTCCamera;)Lcom/android/camera/effect/AquaEffect;

    move-result-object v0

    return-object v0
.end method
