.class public Lcom/lenovo/scg/gallery3d/common/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p5}, Lcom/lenovo/scg/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mFlywheel:Z

    .line 75
    new-instance v0, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    .line 76
    new-instance v0, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    .line 78
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->initFromContext(Landroid/content/Context;)V

    .line 79
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    .line 517
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    const/4 v6, 0x0

    .line 342
    :goto_0
    return v6

    .line 298
    :cond_0
    iget v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 342
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 300
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 303
    .local v4, "time":J
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$600(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 305
    .local v2, "elapsedTime":J
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$500(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    .line 306
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 307
    long-to-float v6, v2

    int-to-float v7, v0

    div-float v1, v6, v7

    .line 309
    .local v1, "q":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 310
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Scroller;->viscousFluid(F)F

    move-result v1

    .line 315
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 316
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_2

    .line 318
    .end local v1    # "q":F
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->abortAnimation()V

    goto :goto_1

    .line 323
    .end local v0    # "duration":I
    .end local v2    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 324
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 325
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 326
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    .line 331
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 332
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 333
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 334
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->finish()V

    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 251
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 405
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->fling(IIIIIIIIII)V

    .line 406
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v6

    .line 440
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v7

    .line 441
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 443
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 444
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 448
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mMode:I

    .line 449
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 450
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 451
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # setter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$002(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;Z)Z

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$002(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;Z)Z

    .line 152
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 179
    .local v0, "squaredNorm":F
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 180
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$500(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$500(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$700(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$700(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 536
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 537
    .local v0, "dx":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 538
    .local v1, "dy":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 468
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 485
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 269
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 287
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 130
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 395
    iput v2, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mMode:I

    .line 398
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 399
    .local v0, "spingbackX":Z
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 400
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 360
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/common/OverScroller;->startScroll(IIIII)V

    .line 361
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mMode:I

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 379
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 380
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 527
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 528
    .local v2, "time":J
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerX:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$600(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/common/OverScroller;->mScrollerY:Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;

    # getter for: Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;->access$600(Lcom/lenovo/scg/gallery3d/common/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 529
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
