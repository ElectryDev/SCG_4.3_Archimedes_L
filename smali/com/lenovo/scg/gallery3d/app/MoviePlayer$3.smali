.class Lcom/lenovo/scg/gallery3d/app/MoviePlayer$3;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/lenovo/scg/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$3;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$3;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$100(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->show()V

    .line 185
    const/4 v0, 0x1

    return v0
.end method
