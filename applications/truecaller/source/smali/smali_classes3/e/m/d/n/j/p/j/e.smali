.class public Le/m/d/n/j/p/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/p/j/d;


# instance fields
.field public final a:Le/m/d/n/j/p/j/a;

.field public final b:Le/m/d/n/j/p/j/c;

.field public final c:Le/m/d/n/j/p/j/b;

.field public final d:J


# direct methods
.method public constructor <init>(JLe/m/d/n/j/p/j/a;Le/m/d/n/j/p/j/c;Le/m/d/n/j/p/j/b;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/d/n/j/p/j/e;->d:J

    .line 3
    iput-object p3, p0, Le/m/d/n/j/p/j/e;->a:Le/m/d/n/j/p/j/a;

    .line 4
    iput-object p4, p0, Le/m/d/n/j/p/j/e;->b:Le/m/d/n/j/p/j/c;

    .line 5
    iput-object p5, p0, Le/m/d/n/j/p/j/e;->c:Le/m/d/n/j/p/j/b;

    return-void
.end method


# virtual methods
.method public a()Le/m/d/n/j/p/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/n/j/p/j/e;->b:Le/m/d/n/j/p/j/c;

    return-object v0
.end method

.method public b()Le/m/d/n/j/p/j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/n/j/p/j/e;->c:Le/m/d/n/j/p/j/b;

    return-object v0
.end method
