.class Lcom/lenovo/lsf/account/PsLoginActivity$11;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$11;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$11;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->startRegisterProgress()V
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3400(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    .line 1491
    return-void
.end method
