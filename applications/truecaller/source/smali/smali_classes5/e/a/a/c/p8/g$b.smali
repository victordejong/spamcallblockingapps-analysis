.class public final Le/a/a/c/p8/g$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/p8/g;->b(Ljava/lang/CharSequence;Le/a/a/c/p8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/k<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/a/c/p8/g$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/c/p8/g$b;

    invoke-direct {v0}, Le/a/a/c/p8/g$b;-><init>()V

    sput-object v0, Le/a/a/c/p8/g$b;->b:Le/a/a/c/p8/g$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/k;

    const-string v0, "<name for destructuring parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getAllowMultiline()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
