.class final Lcom/hiya/stingray/q/b/z$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/h0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/z$k;->a(Lio/realm/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/q/b/z$k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/q/b/z$k$a;

    invoke-direct {v0}, Lcom/hiya/stingray/q/b/z$k$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/q/b/z$k$a;->a:Lcom/hiya/stingray/q/b/z$k$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/i;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "showedIsSpam"

    invoke-virtual {p1, v1, v0}, Lio/realm/i;->S0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
