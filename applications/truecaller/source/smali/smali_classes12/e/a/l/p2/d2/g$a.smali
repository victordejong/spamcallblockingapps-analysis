.class public final Le/a/l/p2/d2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/d2/g;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/p2/d2/g;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:[Z


# direct methods
.method public constructor <init>(Le/a/l/p2/d2/g;[Ljava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/d2/g$a;->a:Le/a/l/p2/d2/g;

    iput-object p2, p0, Le/a/l/p2/d2/g$a;->b:[Ljava/lang/String;

    iput-object p3, p0, Le/a/l/p2/d2/g$a;->c:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget-object p1, p0, Le/a/l/p2/d2/g$a;->b:[Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    .line 4
    iget-object v5, p0, Le/a/l/p2/d2/g$a;->c:[Z

    aget-boolean v2, v5, v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const-string v1, ","

    .line 5
    invoke-static/range {v0 .. v7}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Le/a/l/p2/d2/g$a;->a:Le/a/l/p2/d2/g;

    .line 7
    iget-object p2, p2, Le/a/l/p2/d2/g;->a:Le/a/p4/b;

    .line 8
    invoke-interface {p2, p1}, Le/a/p4/b;->v2(Ljava/lang/String;)V

    return-void
.end method
