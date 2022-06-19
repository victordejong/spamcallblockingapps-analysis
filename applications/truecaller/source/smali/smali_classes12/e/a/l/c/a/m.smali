.class public final Le/a/l/c/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/c/a/n;

.field public final b:Le/a/l/c/a/l;


# direct methods
.method public constructor <init>(Le/a/l/c/a/n;Le/a/l/c/a/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "cacheRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/m;->a:Le/a/l/c/a/n;

    iput-object p2, p0, Le/a/l/c/a/m;->b:Le/a/l/c/a/l;

    return-void
.end method
