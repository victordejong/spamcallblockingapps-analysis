.class public final Lcom/hiya/client/callerid/ui/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/i;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/i$d;->a:Lcom/hiya/client/callerid/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/l;->a(Lg/g/a/b/j1/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lg/g/a/e/a;->a()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCurrentLocale().toLanguageTag()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/i$d;->a:Lcom/hiya/client/callerid/ui/i;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/i;->j(Lcom/hiya/client/callerid/ui/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
