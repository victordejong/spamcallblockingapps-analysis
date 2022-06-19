.class public final Le/a/d/j$b$a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/j$b$a$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/f;

.field public final synthetic b:Le/a/d/j$b$a$a;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Le/a/d/j$b$a$a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/j$b$a$a$c;->a:Lq3/a/x2/f;

    iput-object p2, p0, Le/a/d/j$b$a$a$c;->b:Le/a/d/j$b$a$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Le/a/d/j$b$a$a$c;->b:Le/a/d/j$b$a$a;

    iget-object p1, p1, Le/a/d/j$b$a$a;->b:Lq3/a/x2/g;

    new-instance v2, Le/a/d/i$d;

    iget-object v3, p0, Le/a/d/j$b$a$a$c;->a:Lq3/a/x2/f;

    invoke-direct {v2, v0, v1, v3}, Le/a/d/i$d;-><init>(JLq3/a/x2/f;)V

    invoke-interface {p1, v2, p2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
