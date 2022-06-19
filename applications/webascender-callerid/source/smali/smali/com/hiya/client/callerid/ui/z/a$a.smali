.class public final Lcom/hiya/client/callerid/ui/z/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/z/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/hiya/client/callerid/ui/z/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/z/a$a;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/z/a$a;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/z/a$a;->a:Lcom/hiya/client/callerid/ui/z/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/a;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/z/c;->f()Lcom/hiya/client/callerid/ui/z/c$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/client/callerid/ui/z/l;

    invoke-direct {v1, p1}, Lcom/hiya/client/callerid/ui/z/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/z/c$b;->c(Lcom/hiya/client/callerid/ui/z/l;)Lcom/hiya/client/callerid/ui/z/c$b;

    .line 3
    sget-object v1, Lcom/hiya/client/callerid/ui/z/i;->a:Lcom/hiya/client/callerid/ui/z/i$a;

    invoke-virtual {v1, p1}, Lcom/hiya/client/callerid/ui/z/i$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/ui/z/c$b;->b(Lcom/hiya/client/callerid/ui/z/i;)Lcom/hiya/client/callerid/ui/z/c$b;

    .line 4
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/z/c$b;->a()Lcom/hiya/client/callerid/ui/z/a;

    move-result-object p1

    const-string v0, "DaggerActivityComponent.\u2026\n                .build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
