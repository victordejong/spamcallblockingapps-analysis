.class public final Le/a/v4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/l;


# instance fields
.field public final a:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v4/m;->a:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/m;->a:Le/a/q2/a;

    return-object v0
.end method
