.class public Le/b/a/k$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/k$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/k;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/b/a/k;


# direct methods
.method public constructor <init>(Le/b/a/k;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/a/k$n;->b:Le/b/a/k;

    iput-object p2, p0, Le/b/a/k$n;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b/a/e;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/b/a/k$n;->b:Le/b/a/k;

    iget-object v0, p0, Le/b/a/k$n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/b/a/k;->j(Ljava/lang/String;)V

    return-void
.end method
