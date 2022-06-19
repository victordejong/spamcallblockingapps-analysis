.class public Lzendesk/support/request/DocumentRenderer$Style$Br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/DocumentRenderer$Style;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Br"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyStyle(Ljava/util/List;Ljava/util/Map;)Landroid/text/Spannable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 1
    invoke-static {p1}, Lzendesk/support/request/DocumentRenderer$Style$SpannableHelper;->foldStrings(Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    sget-object p1, Lg/k/d/f;->b:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lzendesk/support/request/DocumentRenderer$Style$SpannableHelper;->foldStrings(Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object p1

    return-object p1
.end method
