.class public final synthetic Le/a/a/y0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/a/a/y0/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/y0/d;

    invoke-direct {v0}, Le/a/a/y0/d;-><init>()V

    sput-object v0, Le/a/a/y0/d;->a:Le/a/a/y0/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    .line 1
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {p1, p2}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result p1

    return p1
.end method
