.class final Lcom/hiya/stingray/manager/e4$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/e4$e;->a(Ljava/util/List;)Li/c/b0/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/p<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/manager/e4$e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/e4$e$a;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/e4$e$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/e4$e$a;->f:Lcom/hiya/stingray/manager/e4$e$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "SpamReportManager"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr/a/a$c;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/e4$e$a;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
