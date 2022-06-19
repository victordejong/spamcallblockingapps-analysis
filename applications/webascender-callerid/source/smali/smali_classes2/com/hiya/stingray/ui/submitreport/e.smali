.class public final synthetic Lcom/hiya/stingray/ui/submitreport/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/submitreport/j;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/submitreport/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/submitreport/e;->f:Lcom/hiya/stingray/ui/submitreport/j;

    iput-object p2, p0, Lcom/hiya/stingray/ui/submitreport/e;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/submitreport/e;->f:Lcom/hiya/stingray/ui/submitreport/j;

    iget-object v1, p0, Lcom/hiya/stingray/ui/submitreport/e;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/submitreport/j;->u(Landroid/content/Context;)V

    return-void
.end method
