.class public Le/a/i4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/o;


# instance fields
.field public final a:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/p5/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "permissionUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i4/p;->a:Le/a/p5/a0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i4/p;->a:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    return v0
.end method
