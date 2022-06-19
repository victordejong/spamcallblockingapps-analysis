.class public final Le/a/v4/s0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/b0/k/c;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b0/k/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Le/a/v4/s0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le/a/v4/s0/a;

    invoke-direct {v0}, Le/a/v4/s0/a;-><init>()V

    sput-object v0, Le/a/v4/s0/a;->c:Le/a/v4/s0/a;

    .line 2
    new-instance v0, Le/a/b0/k/c;

    const-string v1, "English"

    const-string v2, "en"

    const-string v3, "GB"

    invoke-direct {v0, v1, v2, v3}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/a/v4/s0/a;->a:Le/a/b0/k/c;

    const/16 v1, 0xc

    new-array v1, v1, [Le/a/b0/k/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 3
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u0939\u093f\u0902\u0926\u0940"

    const-string v3, "hi"

    const-string v4, "IN"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 4
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u092e\u0930\u093e\u0920\u0940"

    const-string v3, "mr"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 5
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    const-string v3, "te"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 6
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02"

    const-string v3, "ml"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 7
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u0627\u0631\u062f\u0648"

    const-string v3, "ur"

    const-string v5, "PK"

    invoke-direct {v0, v2, v3, v5}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 8
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40"

    const-string v3, "pa"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 9
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u0ba4\u0bae\u0bbf\u0bb4\u0bcd"

    const-string v3, "ta"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 10
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u09ac\u09be\u0982\u09b2\u09be"

    const-string v3, "bn"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 11
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u0c95\u0ca8\u0ccd\u0ca8\u0ca1"

    const-string v3, "kn"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 12
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "Kiswahili"

    const-string v3, "sw"

    const-string v4, "KE"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v0, v1, v2

    .line 13
    new-instance v0, Le/a/b0/k/c;

    const-string v2, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    const-string v3, "ar"

    const-string v4, "SA"

    invoke-direct {v0, v2, v3, v4}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 14
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/v4/s0/a;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
