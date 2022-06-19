.class public Ln3/c0/g0/a$a;
.super Ln3/c0/o$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/c0/g0/a;-><init>(Ln3/c0/q;Ln3/c0/y;ZZ[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ln3/c0/g0/a;


# direct methods
.method public constructor <init>(Ln3/c0/g0/a;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/c0/g0/a$a;->b:Ln3/c0/g0/a;

    invoke-direct {p0, p2}, Ln3/c0/o$c;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ln3/c0/g0/a$a;->b:Ln3/c0/g0/a;

    invoke-virtual {p1}, Ln3/z/v;->b()V

    return-void
.end method
