.class public Le/b/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/k$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/k;->l(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Le/b/a/k;


# direct methods
.method public constructor <init>(Le/b/a/k;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/k$b;->c:Le/b/a/k;

    iput p2, p0, Le/b/a/k$b;->a:I

    iput p3, p0, Le/b/a/k$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b/a/e;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/b/a/k$b;->c:Le/b/a/k;

    iget v0, p0, Le/b/a/k$b;->a:I

    iget v1, p0, Le/b/a/k$b;->b:I

    invoke-virtual {p1, v0, v1}, Le/b/a/k;->l(II)V

    return-void
.end method
