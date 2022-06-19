.class public Le/k/a/c/d0/w$a;
.super Le/k/a/c/d0/w;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Le/k/a/c/d0/w;-><init>()V

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Le/k/a/c/d0/w$a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/d0/w;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/w$a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/w$a;->a:Ljava/lang/Class;

    return-object v0
.end method
