.class public final Le/a/a/c/k8/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/truecaller/messaging/data/types/Conversation;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/a/a/c/k8/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/c/k8/g;

    invoke-direct {v0}, Le/a/a/c/k8/g;-><init>()V

    sput-object v0, Le/a/a/c/k8/g;->a:Le/a/a/c/k8/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    check-cast p2, Lcom/truecaller/messaging/data/types/Conversation;

    .line 2
    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    invoke-virtual {p2, p1}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result p1

    return p1
.end method
