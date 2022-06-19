.class public final Le/a/a/l/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/l/a;->RA(Landroid/widget/TextView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/l/a;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/a/l/a;I)V
    .locals 0

    iput-object p1, p0, Le/a/a/l/a$g;->a:Le/a/a/l/a;

    iput p2, p0, Le/a/a/l/a$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/a/l/a$g;->a:Le/a/a/l/a;

    iget v0, p0, Le/a/a/l/a$g;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Le/a/a/l/a;->QA(Le/a/a/l/a;IZI)V

    .line 2
    iget-object p1, p0, Le/a/a/l/a$g;->a:Le/a/a/l/a;

    invoke-virtual {p1}, Le/a/a/l/a;->PA()Le/a/a/l/b;

    move-result-object p1

    iget v0, p0, Le/a/a/l/a$g;->b:I

    invoke-interface {p1, v0}, Le/a/a/l/b;->y8(I)V

    return-void
.end method
