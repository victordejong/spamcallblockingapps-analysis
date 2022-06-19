.class public final Le/a/g/a/a/a$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->cr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$t;->a:Le/a/g/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/g/a/a/a$t;->a:Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/g/a/m;

    .line 2
    iget-object v1, v0, Le/a/g/a/m;->y:Ls1/w/f;

    new-instance v3, Le/a/g/a/v;

    const/4 p1, 0x0

    invoke-direct {v3, v0, p1}, Le/a/g/a/v;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
