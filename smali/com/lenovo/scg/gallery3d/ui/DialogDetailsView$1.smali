.class Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$1;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$000(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    return-void
.end method
