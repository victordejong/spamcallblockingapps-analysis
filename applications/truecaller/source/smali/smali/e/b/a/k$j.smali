.class public Le/b/a/k$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/k$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/k;->p(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Le/b/a/k;


# direct methods
.method public constructor <init>(Le/b/a/k;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/k$j;->b:Le/b/a/k;

    iput p2, p0, Le/b/a/k$j;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b/a/e;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/b/a/k$j;->b:Le/b/a/k;

    iget v0, p0, Le/b/a/k$j;->a:F

    invoke-virtual {p1, v0}, Le/b/a/k;->p(F)V

    return-void
.end method
