.class public final Lcom/hiya/client/callerid/ui/d0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/ui/d0/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lg/g/a/e/e/n;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/hiya/client/callerid/ui/d0/c;

    invoke-direct {p1}, Lcom/hiya/client/callerid/ui/d0/c;-><init>()V

    return-object p1
.end method
