.class Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "MiniCameraScanningFrameRender.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopValueAnimatorUpdateListener"
.end annotation


# instance fields
.field private endValue:I

.field final synthetic this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)V
    .locals 0
    .param p2, "end"    # I

    .prologue
    .line 297
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput p2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;->endValue:I

    .line 299
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueTop:I
    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->access$102(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;I)I

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->mScaleValueTop:I
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;->access$100(Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender;)I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraScanningFrameRender$TopValueAnimatorUpdateListener;->endValue:I

    if-le v0, v1, :cond_0

    .line 309
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 313
    :cond_0
    return-void
.end method
