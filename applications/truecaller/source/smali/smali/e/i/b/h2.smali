.class public Le/i/b/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Le/i/b/y1;

.field public final c:Le/i/b/e2;

.field public final d:Le/i/b/w1/c;


# direct methods
.method public constructor <init>(Le/i/b/y1;Le/i/b/e2;Le/i/b/w1/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/h2;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/h2;->a:Le/i/b/q2/h;

    .line 3
    iput-object p1, p0, Le/i/b/h2;->b:Le/i/b/y1;

    .line 4
    iput-object p2, p0, Le/i/b/h2;->c:Le/i/b/e2;

    .line 5
    iput-object p3, p0, Le/i/b/h2;->d:Le/i/b/w1/c;

    return-void
.end method
