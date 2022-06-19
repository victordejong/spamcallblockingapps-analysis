.class public final Lzendesk/core/ActionDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final localizedLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ActionDescription;->localizedLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalizedLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ActionDescription;->localizedLabel:Ljava/lang/String;

    return-object v0
.end method
