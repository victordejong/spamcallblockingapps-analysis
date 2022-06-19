.class public final Le/f/a/n/o/b0/i$b;
.super Le/f/a/n/o/b0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/b0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/n/o/b0/c<",
        "Le/f/a/n/o/b0/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/a/n/o/b0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/f/a/n/o/b0/l;
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/o/b0/i$a;

    invoke-direct {v0, p0}, Le/f/a/n/o/b0/i$a;-><init>(Le/f/a/n/o/b0/i$b;)V

    return-object v0
.end method

.method public d(ILjava/lang/Class;)Le/f/a/n/o/b0/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/f/a/n/o/b0/i$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/a/n/o/b0/c;->b()Le/f/a/n/o/b0/l;

    move-result-object v0

    check-cast v0, Le/f/a/n/o/b0/i$a;

    .line 2
    iput p1, v0, Le/f/a/n/o/b0/i$a;->b:I

    .line 3
    iput-object p2, v0, Le/f/a/n/o/b0/i$a;->c:Ljava/lang/Class;

    return-object v0
.end method
