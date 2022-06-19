.class final Lcom/hiya/stingray/ui/local/g/a$e;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/g/a;->n1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/hiya/stingray/t/h1/k;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/ui/local/g/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/local/g/a$e;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/g/a$e;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/local/g/a$e;->f:Lcom/hiya/stingray/ui/local/g/a$e;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/h1/k;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Clicked"

    .line 1
    invoke-static {v0, p1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/h1/k;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/a$e;->a(Lcom/hiya/stingray/t/h1/k;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
