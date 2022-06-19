.class public final Le/a/m0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$a;


# instance fields
.field public final a:Le/a/m0/d1/a;


# direct methods
.method public constructor <init>(Le/a/m0/d1/a;)V
    .locals 1

    const-string v0, "historyChangeListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/p;->a:Le/a/m0/d1/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 0

    const-string p4, "provider"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "helper"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uri"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/m0/p;->a:Le/a/m0/d1/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Le/a/m0/d1/a;->a(Landroid/content/ContentValues;)V

    return p6
.end method
