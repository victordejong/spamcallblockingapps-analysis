.class final Lcom/hiya/stingray/manager/o4/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o4/a;->k(DD)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/manager/o4/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/o4/a$f;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/o4/a$f;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/o4/a$f;->f:Lcom/hiya/stingray/manager/o4/a$f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lg/g/a/a/i/p/h/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/p/h/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->fromIterable(Ljava/lang/Iterable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o4/a$f;->a(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
