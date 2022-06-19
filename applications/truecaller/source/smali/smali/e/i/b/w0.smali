.class public final synthetic Le/i/b/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# instance fields
.field public final synthetic a:Le/i/b/x2;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/w0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/i/b/w0;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Le/i/b/i2/g;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->s()Le/i/b/s2/f;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Le/i/b/x2;->c()Le/i/b/s2/j;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Le/i/b/i2/g;-><init>(Le/i/b/s2/f;Le/i/b/s2/j;)V

    return-object v1
.end method
