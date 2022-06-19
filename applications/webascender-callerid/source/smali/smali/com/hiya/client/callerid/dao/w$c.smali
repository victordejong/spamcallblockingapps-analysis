.class final Lcom/hiya/client/callerid/dao/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/w;->b(Ljava/lang/String;)Li/c/b0/b/v;
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
.field public static final f:Lcom/hiya/client/callerid/dao/w$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/client/callerid/dao/w$c;

    invoke-direct {v0}, Lcom/hiya/client/callerid/dao/w$c;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/dao/w$c;->f:Lcom/hiya/client/callerid/dao/w$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/m/e;)Lg/g/b/c/p;
    .locals 5

    .line 1
    new-instance v0, Lg/g/b/c/p;

    const-string v1, "dto"

    .line 2
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/g/a/a/i/m/e;->getId()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lg/g/a/a/i/m/e;->getNameSection()Lg/g/a/a/i/m/b;

    move-result-object v2

    const-string v3, "dto.nameSection"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lg/g/a/a/i/m/b;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dto.nameSection.languageTag"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lg/g/a/a/i/m/e;->getNameSection()Lg/g/a/a/i/m/b;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lg/g/a/a/i/m/b;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dto.nameSection.name"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lg/g/a/a/i/m/e;->getSpamType()Ljava/lang/String;

    move-result-object p1

    const-string v4, "dto.spamType"

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {v0, v1, v2, v3, p1}, Lg/g/b/c/p;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/m/e;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/w$c;->a(Lg/g/a/a/i/m/e;)Lg/g/b/c/p;

    move-result-object p1

    return-object p1
.end method
