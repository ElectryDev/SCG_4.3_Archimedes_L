.class Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$10;
.super Ljava/lang/Object;
.source "PhotoFunctionPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initBlinkSpec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$10;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 486
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$10;->this$0:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->releaseBlinkSpec()V

    .line 488
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method