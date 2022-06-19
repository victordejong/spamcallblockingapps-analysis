.class public Le/i/b/z1/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/i/b/x2$a<",
        "Le/i/b/z1/b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/i/b/z1/a0;

.field public final c:Le/i/b/s2/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/i/b/z1/a0;Le/i/b/s2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/z1/c0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/i/b/z1/c0;->b:Le/i/b/z1/a0;

    .line 4
    iput-object p3, p0, Le/i/b/z1/c0;->c:Le/i/b/s2/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/z1/y;

    iget-object v1, p0, Le/i/b/z1/c0;->a:Landroid/content/Context;

    iget-object v2, p0, Le/i/b/z1/c0;->c:Le/i/b/s2/f;

    iget-object v3, p0, Le/i/b/z1/c0;->b:Le/i/b/z1/a0;

    invoke-direct {v0, v1, v2, v3}, Le/i/b/z1/y;-><init>(Landroid/content/Context;Le/i/b/s2/f;Le/i/b/z1/a0;)V

    .line 2
    new-instance v1, Le/i/b/z1/w;

    invoke-direct {v1, v0}, Le/i/b/z1/w;-><init>(Le/i/b/z1/y;)V

    .line 3
    new-instance v0, Le/i/b/z1/s;

    iget-object v2, p0, Le/i/b/z1/c0;->c:Le/i/b/s2/f;

    invoke-direct {v0, v1, v2}, Le/i/b/z1/s;-><init>(Le/i/b/z1/b0;Le/i/b/s2/f;)V

    return-object v0
.end method
