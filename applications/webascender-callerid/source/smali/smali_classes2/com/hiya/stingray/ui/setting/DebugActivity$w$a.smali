.class final Lcom/hiya/stingray/ui/setting/DebugActivity$w$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity$w;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lg/g/b/c/m;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/ui/setting/DebugActivity$w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/setting/DebugActivity$w$a;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/setting/DebugActivity$w$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/setting/DebugActivity$w$a;->f:Lcom/hiya/stingray/ui/setting/DebugActivity$w$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/m;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lg/g/b/c/m;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/m;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/DebugActivity$w$a;->a(Lg/g/b/c/m;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
