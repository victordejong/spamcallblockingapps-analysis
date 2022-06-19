.class public final Le/a/q/g/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln3/c0/f0/a;

.field public static final b:Ln3/c0/f0/a;

.field public static final c:Ln3/c0/f0/a;

.field public static final d:Ln3/c0/f0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/a/q/g/i$a;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Le/a/q/g/i$a;-><init>(II)V

    sput-object v0, Le/a/q/g/i;->a:Ln3/c0/f0/a;

    .line 2
    new-instance v0, Le/a/q/g/i$b;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Le/a/q/g/i$b;-><init>(II)V

    sput-object v0, Le/a/q/g/i;->b:Ln3/c0/f0/a;

    .line 3
    new-instance v0, Le/a/q/g/i$c;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Le/a/q/g/i$c;-><init>(II)V

    sput-object v0, Le/a/q/g/i;->c:Ln3/c0/f0/a;

    .line 4
    new-instance v0, Le/a/q/g/i$d;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Le/a/q/g/i$d;-><init>(II)V

    sput-object v0, Le/a/q/g/i;->d:Ln3/c0/f0/a;

    return-void
.end method
