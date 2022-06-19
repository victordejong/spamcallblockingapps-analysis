.class public final Le/a/g/a/c/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/c/a;->xq(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/c/a;


# direct methods
.method public constructor <init>(Le/a/g/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/c/a$e;->a:Le/a/g/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Le/a/g/a/c/a$e;->a:Le/a/g/a/c/a;

    invoke-virtual {p1}, Le/a/g/a/c/a;->RA()Le/a/g/a/c/c;

    move-result-object p1

    check-cast p1, Le/a/g/a/c/e;

    .line 2
    iget-wide v1, p1, Le/a/g/a/c/e;->g:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    const-string v5, "analyticsContext"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-wide v7, p1, Le/a/g/a/c/e;->h:J

    cmp-long v0, v7, v3

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/c/d;

    if-eqz v0, :cond_4

    iget-object p1, p1, Le/a/g/a/c/e;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    move-wide v3, v7

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Le/a/g/a/c/d;->Tg(JJLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 4
    :cond_1
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/c/d;

    if-eqz v0, :cond_4

    iget-object v1, p1, Le/a/g/a/c/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p1, Le/a/g/a/c/e;->i:Ljava/lang/String;

    iget-object p1, p1, Le/a/g/a/c/e;->f:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-interface {v0, v1, v2, p1}, Le/a/g/a/c/d;->sr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string p1, "phoneNumber"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :cond_4
    :goto_0
    return-void
.end method
