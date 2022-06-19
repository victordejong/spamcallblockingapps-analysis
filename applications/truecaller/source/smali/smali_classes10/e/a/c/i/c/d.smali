.class public final Le/a/c/i/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/c/c;


# instance fields
.field public final a:Le/a/c/i/c/a;


# direct methods
.method public constructor <init>(Le/a/c/i/c/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "databaseManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/c/d;->a:Le/a/c/i/c/a;

    return-void
.end method


# virtual methods
.method public a()Le/a/c/c/e/a;
    .locals 2

    .line 1
    new-instance v0, Le/a/c/c/e/a;

    iget-object v1, p0, Le/a/c/i/c/d;->a:Le/a/c/i/c/a;

    invoke-direct {v0, v1}, Le/a/c/c/e/a;-><init>(Le/a/c/i/c/a;)V

    return-object v0
.end method
