.class public final Lcom/truecaller/messaging/newconversation/NewConversationPresenter$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/newconversation/NewConversationPresenter;->D4(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/a/g/l0/f;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$d;

    invoke-direct {v0}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$d;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/newconversation/NewConversationPresenter$d;->b:Lcom/truecaller/messaging/newconversation/NewConversationPresenter$d;

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
    check-cast p1, Le/a/a/g/l0/f;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/a/a/g/l0/f;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
