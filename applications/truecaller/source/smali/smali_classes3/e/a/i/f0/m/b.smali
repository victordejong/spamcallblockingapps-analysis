.class public abstract Le/a/i/f0/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/m/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/i/f0/m/d;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Le/a/i/f0/l/c;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le/a/i/f0/l/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/a/i/f0/l/c;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 2
    sget-wide p1, Le/a/i/f0/m/e;->a:J

    .line 3
    iput-wide p1, p0, Le/a/i/f0/m/b;->a:J

    return-void
.end method


# virtual methods
.method public b()Le/a/i/f0/l/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/i/f0/m/b;->a:J

    return-wide v0
.end method
