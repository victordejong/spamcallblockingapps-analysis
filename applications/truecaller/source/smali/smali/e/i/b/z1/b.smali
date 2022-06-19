.class public final synthetic Le/i/b/z1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/z1/b0$a;


# instance fields
.field public final synthetic a:Le/i/b/u2/q;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Le/i/b/u2/q;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/z1/b;->a:Le/i/b/u2/q;

    iput-wide p2, p0, Le/i/b/z1/b;->b:J

    return-void
.end method


# virtual methods
.method public final a(Le/i/b/z1/x$a;)V
    .locals 4

    iget-object v0, p0, Le/i/b/z1/b;->a:Le/i/b/u2/q;

    iget-wide v1, p0, Le/i/b/z1/b;->b:J

    .line 1
    invoke-virtual {v0}, Le/i/b/u2/q;->b()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Le/i/b/z1/g$b;

    .line 2
    iput-object v3, p1, Le/i/b/z1/g$b;->g:Ljava/lang/String;

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4
    iput-object v1, p1, Le/i/b/z1/g$b;->a:Ljava/lang/Long;

    .line 5
    invoke-virtual {v0}, Le/i/b/u2/q;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6
    iput-object v0, p1, Le/i/b/z1/g$b;->i:Ljava/lang/Integer;

    return-void
.end method
