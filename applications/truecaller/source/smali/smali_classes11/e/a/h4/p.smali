.class public final synthetic Le/a/h4/p;
.super Ls1/z/c/w;
.source "SourceFile"


# static fields
.field public static final h:Ls1/a/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/h4/p;

    invoke-direct {v0}, Le/a/h4/p;-><init>()V

    sput-object v0, Le/a/h4/p;->h:Ls1/a/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-class v0, Le/a/h4/q/c;

    const-string v1, "channelKey"

    const-string v2, "channelKey()Ljava/lang/String;"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ls1/z/c/w;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Le/a/h4/q/c;

    .line 1
    iget-object p1, p1, Le/a/h4/q/c;->c:Ljava/lang/String;

    return-object p1
.end method
