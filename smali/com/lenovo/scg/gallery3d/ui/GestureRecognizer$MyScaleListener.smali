.class Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyScaleListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->mListener:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->access$300(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;->onScale(FFF)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->mListener:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->access$300(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$MyScaleListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->mListener:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->access$300(Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;)Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;->onScaleEnd()V

    .line 123
    return-void
.end method
