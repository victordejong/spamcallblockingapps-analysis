.class public Le/i/b/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/q1/c;


# instance fields
.field public final synthetic a:Le/i/b/m2;


# direct methods
.method public constructor <init>(Le/i/b/m2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/k2;->a:Le/i/b/m2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/k2;->a:Le/i/b/m2;

    sget-object v1, Le/i/b/v2;->d:Le/i/b/v2;

    invoke-virtual {v0, v1}, Le/i/b/m2;->a(Le/i/b/v2;)V

    return-void
.end method
