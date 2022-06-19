.class public final Le/a/f3/y/a$a;
.super Le/a/f3/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f3/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final d:Le/a/f3/y/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/f3/y/a$a;

    invoke-direct {v0}, Le/a/f3/y/a$a;-><init>()V

    sput-object v0, Le/a/f3/y/a$a;->d:Le/a/f3/y/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lcom/truecaller/callbubbles/R$string;->call_bubbles_state_calling:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/callbubbles/R$color;->call_bubbles_state_text_default:I

    .line 3
    sget v2, Lcom/truecaller/callbubbles/R$color;->call_bubbles_state_background_default:I

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v2, v3}, Le/a/f3/y/a;-><init>(Ljava/lang/Integer;IILs1/z/c/f;)V

    return-void
.end method
