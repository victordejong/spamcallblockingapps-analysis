.class public final Ln3/c0/c$b;
.super Ln3/c0/o$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/c0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq3/a/w2/j;


# direct methods
.method public constructor <init>(Ln3/c0/c;Lq3/a/w2/j;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/j;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Ln3/c0/c$b;->b:Lq3/a/w2/j;

    invoke-direct {p0, p3}, Ln3/c0/o$c;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ln3/c0/c$b;->b:Lq3/a/w2/j;

    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void
.end method
