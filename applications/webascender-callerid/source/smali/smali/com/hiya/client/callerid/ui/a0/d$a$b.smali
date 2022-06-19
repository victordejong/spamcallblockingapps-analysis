.class final Lcom/hiya/client/callerid/ui/a0/d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/d$a;->a(Ljava/util/Set;)Li/c/b0/b/v;
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
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/client/callerid/ui/a0/d$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/client/callerid/ui/a0/d$a$b;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/a0/d$a$b;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/d$a$b;->f:Lcom/hiya/client/callerid/ui/a0/d$a$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)Lcom/hiya/client/callerid/ui/b0/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/b0/e;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/hiya/client/callerid/ui/b0/e;-><init>(Lg/g/b/c/f;Z)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/d$a$b;->a(Lg/g/b/c/f;)Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object p1

    return-object p1
.end method
