.class public Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;
.super Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;
.source "EffectSplitAnimation.java"


# instance fields
.field private mMoveDistance:F

.field private mProgress:F


# direct methods
.method public constructor <init>(FI)V
    .locals 1
    .param p1, "moveDistance"    # F
    .param p2, "duration"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/CanvasAnimation;-><init>()V

    .line 16
    iput p1, p0, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->mMoveDistance:F

    .line 17
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->setDuration(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v3, 0x0

    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->mMoveDistance:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->mProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-interface {p1, v0, v3, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 31
    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    return v0
.end method

.method protected onCalculate(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/lenovo/scg/camera/effect/EffectSplitAnimation;->mProgress:F

    .line 37
    return-void
.end method
