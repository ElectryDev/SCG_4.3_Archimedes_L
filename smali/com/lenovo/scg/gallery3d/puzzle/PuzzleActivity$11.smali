.class Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$11;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showFinishDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 975
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$11;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->finish()V

    .line 976
    return-void
.end method