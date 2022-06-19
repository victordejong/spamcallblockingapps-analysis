.class public final Le/a/a/w0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/p8/a;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ls1/z/c/a0;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ls1/z/c/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/w0/b;->a:Ljava/util/Map;

    iput-object p2, p0, Le/a/a/w0/b;->b:Ls1/z/c/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/w0/b;->b:Ls1/z/c/a0;

    iget p2, p1, Ls1/z/c/a0;->a:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Ls1/z/c/a0;->a:I

    return-void
.end method

.method public b(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V
    .locals 0

    const-string p2, "style"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/a/w0/b;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
