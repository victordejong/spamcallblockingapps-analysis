.class public Le/a/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/x1;


# instance fields
.field public final a:Le/a/o5/j;


# direct methods
.method public constructor <init>(Le/a/o5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/m2;->a:Le/a/o5/j;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/m2;->a:Le/a/o5/j;

    invoke-virtual {v0}, Le/a/o5/j;->b()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    sget-boolean v0, Le/a/r/t/c;->f:Z

    return v0
.end method
