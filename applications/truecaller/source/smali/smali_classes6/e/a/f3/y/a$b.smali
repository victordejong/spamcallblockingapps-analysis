.class public final Le/a/f3/y/a$b;
.super Le/a/f3/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f3/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final d:Le/a/f3/y/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/f3/y/a$b;

    invoke-direct {v0}, Le/a/f3/y/a$b;-><init>()V

    sput-object v0, Le/a/f3/y/a$b;->d:Le/a/f3/y/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget v0, Lcom/truecaller/callbubbles/R$string;->call_bubbles_state_on_hold:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/callbubbles/R$color;->call_bubbles_state_text_on_hold:I

    .line 3
    sget v2, Lcom/truecaller/callbubbles/R$color;->call_bubbles_state_background_on_hold:I

    const/4 v3, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v2, v3}, Le/a/f3/y/a;-><init>(Ljava/lang/Integer;IILs1/z/c/f;)V

    return-void
.end method
